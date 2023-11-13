.class public final Lkotlinx/coroutines/scheduling/TaskContextImpl;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# instance fields
.field public final taskMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    return-void
.end method


# virtual methods
.method public final afterTask()V
    .locals 0

    return-void
.end method

.method public final getTaskMode()I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    return p0
.end method
