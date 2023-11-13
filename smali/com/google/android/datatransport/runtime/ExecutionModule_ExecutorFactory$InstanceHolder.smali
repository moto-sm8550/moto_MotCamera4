.class public final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    return-void
.end method
