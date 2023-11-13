.class public final Lcom/motorola/camera/jms/BgJobManager$LazyLoader;
.super Ljava/lang/Object;
.source "BgJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/jms/BgJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/jms/BgJobManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/jms/BgJobManager;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/jms/BgJobManager;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    return-void
.end method
