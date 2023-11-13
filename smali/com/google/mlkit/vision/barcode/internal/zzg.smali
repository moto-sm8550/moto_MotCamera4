.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/Image;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    :cond_0
    return-void
.end method
