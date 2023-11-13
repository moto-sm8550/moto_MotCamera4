.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    const/16 p0, 0x81

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa91

    if-eq p1, p0, :cond_0

    const/16 p0, 0x5111

    if-eq p1, p0, :cond_0

    const/16 p0, 0x5121

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd7

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd8

    if-eq p1, p0, :cond_0

    const/16 p0, 0x511

    if-eq p1, p0, :cond_0

    const/16 p0, 0x512

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
