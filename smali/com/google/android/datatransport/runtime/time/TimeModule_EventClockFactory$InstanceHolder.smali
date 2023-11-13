.class public final Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    return-void
.end method
