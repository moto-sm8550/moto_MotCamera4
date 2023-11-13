.class public final Lcom/motorola/camera/cli/DualPreviewManager;
.super Ljava/lang/Object;
.source "DualPreviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/DualPreviewManager$SecondaryListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/cli/DualPreviewManager;

.field public static volatile faceBounds:Landroid/graphics/Rect;

.field public static secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/cli/DualPreviewManager$SecondaryListener;",
            ">;"
        }
    .end annotation
.end field

.field public static sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/DualPreviewManager;

    invoke-direct {v0}, Lcom/motorola/camera/cli/DualPreviewManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/DualPreviewManager;->INSTANCE:Lcom/motorola/camera/cli/DualPreviewManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
