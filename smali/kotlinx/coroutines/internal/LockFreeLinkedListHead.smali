.class public Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "LockFreeLinkedList.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final remove()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "head cannot be removed"

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
