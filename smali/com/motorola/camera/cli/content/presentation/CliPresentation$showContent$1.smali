.class public final Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $contentId:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliPresentation;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iput p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;->$contentId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;->$contentId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZ)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
