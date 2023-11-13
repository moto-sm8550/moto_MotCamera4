.class public final Landroidx/core/provider/CallbackWithHandler$2;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$callback:Lcom/moto/patternlibrary/R$layout;

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Lcom/moto/patternlibrary/R$layout;I)V
    .locals 0

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Lcom/moto/patternlibrary/R$layout;

    iput p2, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Lcom/moto/patternlibrary/R$layout;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    check-cast v0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 2
    iget-object v0, v0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    :cond_0
    return-void
.end method
