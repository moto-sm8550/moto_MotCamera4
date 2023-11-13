.class public final Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;
.super Ljava/lang/Object;
.source "ExtensionEngine.kt"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $pid:I

.field public final synthetic this$0:Lcom/motorola/camera/camerax_extensions/ExtensionEngine;


# direct methods
.method public constructor <init>(ILcom/motorola/camera/camerax_extensions/ExtensionEngine;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;->$pid:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;->this$0:Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;->this$0:Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    iget p0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;->$pid:I

    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 2
    invoke-virtual {v0, p0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->removeApp(I)V

    return-void
.end method
