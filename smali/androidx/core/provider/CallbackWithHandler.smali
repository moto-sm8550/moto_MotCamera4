.class public final Landroidx/core/provider/CallbackWithHandler;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field public final mCallback:Lcom/moto/patternlibrary/R$layout;

.field public final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/moto/patternlibrary/R$layout;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Lcom/moto/patternlibrary/R$layout;

    .line 3
    iput-object p2, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Lcom/moto/patternlibrary/R$layout;

    .line 4
    iget-object p0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/CallbackWithHandler$1;

    invoke-direct {v1, v0, p1}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Lcom/moto/patternlibrary/R$layout;Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Lcom/moto/patternlibrary/R$layout;

    .line 6
    iget-object p0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/CallbackWithHandler$2;

    invoke-direct {v1, p1, v0}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(Lcom/moto/patternlibrary/R$layout;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
