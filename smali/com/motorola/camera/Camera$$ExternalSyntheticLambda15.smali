.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Camera;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;Landroid/graphics/Bitmap;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$3:I

    iput p5, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/Camera;

    iget-object v1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$2:I

    iget v3, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$3:I

    iget p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;->f$4:I

    sget-object v4, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    const v4, 0x7f0a0390

    .line 1
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
