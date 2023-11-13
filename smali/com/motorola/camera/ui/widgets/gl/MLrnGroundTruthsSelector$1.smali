.class public final Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "MLrnGroundTruthsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    return-void
.end method


# virtual methods
.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onChanged()V

    .line 7
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TOGGLE_MLRN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0
.end method
