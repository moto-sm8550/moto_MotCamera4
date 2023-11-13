.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;
.super Ljava/lang/IllegalArgumentException;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/16 v0, 0x36

    const-string v1, "Unpaired surrogate at index "

    const-string v2, " of "

    .line 1
    invoke-static {v0, v1, p1, v2, p2}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
