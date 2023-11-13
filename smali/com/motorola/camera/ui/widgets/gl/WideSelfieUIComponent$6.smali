.class public final Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;
.super Ljava/util/TimerTask;
.source "WideSelfieUIComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    const/4 v2, 0x3

    rem-int/2addr v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 3
    :cond_2
    :goto_1
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    .line 5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    return-void
.end method
