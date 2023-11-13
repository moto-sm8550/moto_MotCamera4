.class public interface abstract Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;
.super Ljava/lang/Object;
.source "ListTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onEmptySpaceTap(Landroid/graphics/PointF;)V
.end method

.method public abstract onEmptySpaceTouched()V
.end method

.method public abstract onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
.end method

.method public abstract onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
.end method

.method public abstract onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
.end method

.method public abstract onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
.end method
