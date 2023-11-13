.class public final Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;
.super Ljava/lang/Object;
.source "FeatureLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/FeatureLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    return-void
.end method
