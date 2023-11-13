.class public final Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "MultiIntentAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction<",
        "Ljava/util/List<",
        "+",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Landroid/content/Intent;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final multiIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(ILcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iput-object p2, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->multiIntent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/motorola/camera/EventListener;)V
    .locals 3

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->multiIntent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->multiIntent:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "multiIntent[0].second"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;->execute(Lcom/motorola/camera/EventListener;)V

    :cond_0
    return-void
.end method
