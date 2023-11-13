.class public Lcom/google/android/libraries/barhopper/RecognitionOptions;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    value = "jni_common.cc"
.end annotation


# instance fields
.field private barcodeFormats:I
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "jni_common.cc"
    .end annotation
.end field

.field private onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "jni_common.cc"
    .end annotation
.end field

.field private outputUnrecognizedBarcodes:Z
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "jni_common.cc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    new-instance v0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    return-void
.end method


# virtual methods
.method public final setBarcodeFormats(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    return-void
.end method
