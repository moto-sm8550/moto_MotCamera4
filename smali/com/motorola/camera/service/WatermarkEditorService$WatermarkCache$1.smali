.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache$1;
.super Ljava/lang/Object;
.source "WatermarkEditorService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    invoke-direct {p0, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    return-object p0
.end method
