.class public interface abstract Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;
.super Ljava/lang/Object;
.source "iTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;
    }
.end annotation


# virtual methods
.method public abstract getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
.end method

.method public abstract getSpriteData(I)Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method
