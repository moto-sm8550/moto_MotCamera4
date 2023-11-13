.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TutorialAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public screenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 3
    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentBackground:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentBackground:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 11
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 16
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :goto_1
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentHeader:Landroid/widget/TextView;

    .line 21
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 22
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentText:Landroid/widget/TextView;

    .line 24
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d011c

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;

    const-string p2, "layout"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
