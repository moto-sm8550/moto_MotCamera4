.class public final Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;
    }
.end annotation


# instance fields
.field public mPriority:I

.field public mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fonts-androidx"

    .line 2
    iput-object v0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mThreadName:Ljava/lang/String;

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mPriority:I

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;

    iget-object v1, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mThreadName:Ljava/lang/String;

    iget p0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mPriority:I

    invoke-direct {v0, p1, v1, p0}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
