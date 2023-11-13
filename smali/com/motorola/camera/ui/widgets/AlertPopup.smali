.class public Lcom/motorola/camera/ui/widgets/AlertPopup;
.super Lcom/motorola/camera/ui/widgets/Popup;
.source "AlertPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;,
        Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;,
        Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;,
        Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;,
        Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIsOnClick:Z

.field public mKeepOrientation:Z

.field public mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

.field public mNegativeOnCancel:Z

.field public mOnDismissListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;

.field public mPositiveClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/Popup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mIsOnClick:Z

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeOnCancel:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mKeepOrientation:Z

    .line 5
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setMessage(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setKeepOrientation(Z)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setNegativeOnCancel(Z)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setPositiveAllCaps(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setMessageHTML(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setTitle(I)V

    return-void
.end method

.method private setAnimView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0153

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setDismissFutureDialogs(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0152

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setDrawable(I)V
    .locals 1

    const v0, 0x7f0a0153

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a0153

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setKeepOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mKeepOrientation:Z

    return-void
.end method

.method private setMessage(I)V
    .locals 1

    const v0, 0x7f0a0280

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a0280

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setMessageHTML(Ljava/lang/String;)V
    .locals 11

    const v0, 0x7f0a0280

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 7
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 8
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 9
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 10
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 11
    new-instance v7, Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0600ca

    sget-object v10, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 13
    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 14
    invoke-direct {v7, v4, v8}, Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p1, v7, v5, v6, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNegativeOnCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeOnCancel:Z

    return-void
.end method

.method private setOnDismissListener(Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mOnDismissListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;

    return-void
.end method

.method private setPositiveAllCaps(Z)V
    .locals 1

    const v0, 0x7f0a00a2

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method private setTitle(I)V
    .locals 1

    const v0, 0x7f0a0061

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0401

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTitleColor(I)V
    .locals 1

    const v0, 0x7f0a0061

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeOnCancel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/Popup;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mIsOnClick:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mOnDismissListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnDismissListener;->onDismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mIsOnClick:Z

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mIsOnClick:Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->cancel()V

    goto :goto_0

    .line 4
    :sswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    goto :goto_0

    .line 7
    :sswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_0
    :goto_0
    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00a1 -> :sswitch_1
        0x7f0a00a2 -> :sswitch_0
        0x7f0a02f9 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->cancel()V

    const/4 p0, 0x1

    return p0
.end method

.method public setOrientation(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup;->mKeepOrientation:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method
