.class public final synthetic Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const-string v3, "layout_inflater"

    .line 2
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0a0063

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const v3, 0x7f0d001e

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x7f0a02f9

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/AlertPopup;

    .line 8
    sget v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->$r8$clinit:I

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 12
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0a02b1

    .line 14
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 16
    iget-object v5, v3, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 17
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 18
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 19
    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    :cond_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    iget v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    if-eqz v1, :cond_2

    .line 24
    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$100(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 26
    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$200(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 28
    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$300(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/String;)V

    .line 29
    :cond_4
    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    if-eqz v1, :cond_5

    .line 30
    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$400(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    .line 31
    :cond_5
    iget v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v3, :cond_6

    const v5, 0x7f0a00a2

    .line 32
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 33
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 37
    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v3, :cond_7

    const v5, 0x7f0a00a1

    .line 38
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 39
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 43
    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$1600(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    .line 44
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$1700(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    .line 45
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveAllCaps:Z

    invoke-static {v2, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->access$1800(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    .line 46
    iput-object v2, v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    .line 47
    iget p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 48
    iget-boolean v0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup;->mKeepOrientation:Z

    if-eqz v0, :cond_8

    move p0, v4

    .line 49
    :cond_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setOrientation(I)V

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 52
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/Popup;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 56
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->onCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 57
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mIdx:I

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onComplete(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
