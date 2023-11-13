.class public final Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TimeModule_UptimeClockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    return-void
.end method
