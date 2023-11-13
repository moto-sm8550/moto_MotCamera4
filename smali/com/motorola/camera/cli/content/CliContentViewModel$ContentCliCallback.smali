.class public interface abstract Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;
.super Ljava/lang/Object;
.source "CliContentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cli/content/CliContentViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentCliCallback"
.end annotation


# virtual methods
.method public abstract changeOrientation(I)V
.end method

.method public abstract close()V
.end method

.method public abstract showContentPresentation(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Lcom/motorola/camera/cli/CliEventListener;",
            "+",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "Lcom/motorola/camera/cli/content/CliContentViewModel;",
            ">;>;)V"
        }
    .end annotation
.end method
