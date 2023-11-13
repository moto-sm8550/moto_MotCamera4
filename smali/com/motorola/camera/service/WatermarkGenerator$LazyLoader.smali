.class public final Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;
.super Ljava/lang/Object;
.source "WatermarkGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/service/WatermarkGenerator;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkGenerator;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    return-void
.end method
