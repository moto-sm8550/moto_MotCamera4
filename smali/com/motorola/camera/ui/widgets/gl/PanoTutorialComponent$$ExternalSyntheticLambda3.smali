.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;->f$1:I

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    return-void
.end method
