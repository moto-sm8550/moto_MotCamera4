.class public final Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;
.super Ljava/lang/Object;
.source "VSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/VSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    return-void
.end method
