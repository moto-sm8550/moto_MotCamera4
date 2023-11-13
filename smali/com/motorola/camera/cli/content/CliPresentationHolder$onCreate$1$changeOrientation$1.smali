.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliPresentationHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->changeOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $orientation:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;->$orientation:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;->$orientation:I

    .line 2
    iput p0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    .line 3
    invoke-static {v0, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
