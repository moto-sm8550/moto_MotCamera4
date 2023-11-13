.class public interface abstract Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# virtual methods
.method public abstract getBoundingBox()Landroid/graphics/Rect;
.end method

.method public abstract getCornerPoints()[Landroid/graphics/Point;
.end method

.method public abstract getDisplayValue()Ljava/lang/String;
.end method

.method public abstract getFormat()I
.end method

.method public abstract getRawBytes()[B
.end method

.method public abstract getRawValue()Ljava/lang/String;
.end method

.method public abstract getValueType()I
.end method
