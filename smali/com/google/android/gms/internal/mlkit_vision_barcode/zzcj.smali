.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcj;
.super Lcom/google/common/collect/TransformedIterator;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
