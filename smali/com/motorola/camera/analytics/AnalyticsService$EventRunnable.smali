.class public final Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;
.super Ljava/lang/Object;
.source "AnalyticsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventRunnable"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mEventType:I

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mEventType:I

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mVersion:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/analytics/CheckinEvent;

    iget v1, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mEventType:I

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda10;->name(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/motorola/camera/analytics/AnalyticsService;->access$100(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/CheckInEntry;

    .line 5
    invoke-virtual {v1, v0}, Lcom/motorola/camera/analytics/CheckInEntry;->setValue(Lcom/motorola/camera/analytics/CheckinEvent;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/analytics/CheckinEvent;->publish(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Lcom/motorola/camera/analytics/UnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
