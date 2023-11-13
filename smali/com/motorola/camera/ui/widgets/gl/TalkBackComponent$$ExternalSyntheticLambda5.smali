.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v1, "MENU_LEFT"

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "MENU_TOP"

    .line 4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "MENU_TEXT"

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "LAYOUT_WIDTH"

    .line 6
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "LAYOUT_HEIGHT"

    .line 7
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string v6, "LAYOUT_Y"

    .line 8
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v7, "MENU_CELL_WIDTH"

    .line 9
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    const-string v8, "MENU_CELL_HEIGHT"

    .line 10
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    .line 11
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v8, 0x0

    move v9, v8

    .line 12
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 13
    new-instance v10, Landroid/widget/TextView;

    .line 14
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x9

    const/4 v13, -0x1

    .line 17
    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 18
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 19
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v12, 0x1

    .line 20
    invoke-virtual {v10, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 23
    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setHeight(I)V

    .line 24
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v6

    .line 26
    invoke-virtual {p0, v8, v8, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v1, v5

    .line 27
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    float-to-int v1, v4

    .line 28
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 30
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :goto_1
    return-void
.end method
