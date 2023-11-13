.class public final Lkotlinx/coroutines/channels/ClosedSendChannelException;
.super Ljava/lang/IllegalStateException;
.source "Channel.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method
