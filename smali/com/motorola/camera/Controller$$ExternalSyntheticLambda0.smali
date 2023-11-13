.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/Controller;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/Controller;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    .line 3
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
