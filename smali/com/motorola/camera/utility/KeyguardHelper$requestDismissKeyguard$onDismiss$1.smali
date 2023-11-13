.class public final Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "KeyguardHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDismissError()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;->onDismissSucceeded()V

    return-void
.end method
