.class public final Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;
.super Ljava/util/TimerTask;
.source "FrontDisplayFlash.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    return-void
.end method
