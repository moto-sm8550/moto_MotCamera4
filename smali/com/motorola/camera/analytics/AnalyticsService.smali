.class public final Lcom/motorola/camera/analytics/AnalyticsService;
.super Ljava/lang/Object;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;
    }
.end annotation


# instance fields
.field public final mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnalyticsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/analytics/AnalyticsService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/analytics/AnalyticsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsService;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method public static access$100(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    .line 5
    :cond_0
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    .line 6
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    .line 7
    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_1

    .line 8
    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    goto :goto_1

    .line 9
    :cond_4
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const/4 v4, 0x7

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    .line 10
    :goto_1
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 11
    :pswitch_0
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInListEntry;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInListEntry;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :pswitch_1
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInBoolEntry;

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInBoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :pswitch_2
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInLongEntry;

    check-cast v3, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInLongEntry;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :pswitch_3
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInDoubleEntry;

    check-cast v3, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInDoubleEntry;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :pswitch_4
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :pswitch_5
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInStringEntry;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInStringEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
