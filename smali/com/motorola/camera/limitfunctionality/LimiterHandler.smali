.class public abstract Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.super Ljava/lang/Object;
.source "LimiterHandler.java"


# instance fields
.field public mLimited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLimitedFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
