.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"

# interfaces
.implements Lcom/google/android/datatransport/TransportScheduleCallback;


# static fields
.field public static final CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

.field public static final LIST_EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final instance:Lkotlinx/coroutines/internal/LockFreeLinkedListKt;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->instance:Lkotlinx/coroutines/internal/LockFreeLinkedListKt;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
