.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Camera;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Camera;

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void
.end method
