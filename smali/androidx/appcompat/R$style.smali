.class public final Landroidx/appcompat/R$style;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Landroidx/appcompat/R$style;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/R$style;

    invoke-direct {v0}, Landroidx/appcompat/R$style;-><init>()V

    sput-object v0, Landroidx/appcompat/R$style;->INSTANCE:Landroidx/appcompat/R$style;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Channel$default(III)Lkotlinx/coroutines/channels/Channel;
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p2, v0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move p1, v2

    :cond_1
    const/4 p2, 0x0

    const/4 v3, -0x2

    if-eq p0, v3, :cond_9

    const/4 v3, -0x1

    if-eq p0, v3, :cond_6

    if-eqz p0, :cond_4

    const v1, 0x7fffffff

    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_2

    if-ne p1, v0, :cond_2

    .line 1
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/ArrayChannel;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_0

    .line 3
    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/LinkedListChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/LinkedListChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 4
    new-instance p0, Lkotlinx/coroutines/channels/RendezvousChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/RendezvousChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 5
    :cond_5
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 6
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 7
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_9
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    if-ne p1, v2, :cond_a

    .line 9
    sget-object v0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v2, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 11
    :cond_a
    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    :goto_0
    return-object p0
.end method
