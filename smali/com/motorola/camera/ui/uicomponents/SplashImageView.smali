.class public Lcom/motorola/camera/ui/uicomponents/SplashImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SplashImageView.java"


# static fields
.field public static mToken:I


# instance fields
.field public mFirstDrawing:Ljava/lang/Runnable;

.field public final mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mToken:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    sget p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mToken:I

    add-int/lit8 p2, p0, 0x1

    sput p2, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mToken:I

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFirstDrawing(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mFirstDrawing:Ljava/lang/Runnable;

    return-void
.end method
