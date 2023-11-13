.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;
.super Ljava/lang/Object;
.source "WatermarkEditorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    return-void
.end method
