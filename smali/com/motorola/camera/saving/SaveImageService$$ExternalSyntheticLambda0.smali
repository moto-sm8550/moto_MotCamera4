.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
