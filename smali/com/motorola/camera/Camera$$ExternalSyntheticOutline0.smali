.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;
    .locals 1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    return-object p0
.end method
