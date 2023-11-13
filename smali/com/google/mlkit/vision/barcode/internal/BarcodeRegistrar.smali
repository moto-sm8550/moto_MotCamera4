.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 5

    .line 1
    const-class p0, Lcom/google/mlkit/vision/barcode/internal/zzf;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 2
    new-instance v2, Lcom/google/firebase/components/Dependency;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v1, Landroidx/appcompat/R$styleable;->zza:Landroidx/appcompat/R$styleable;

    .line 4
    iput-object v1, v0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/barcode/internal/zze;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/firebase/components/Dependency;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    const-class p0, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 9
    new-instance v2, Lcom/google/firebase/components/Dependency;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object p0, Lcom/google/mlkit/vision/barcode/internal/zzd;->zza:Lcom/google/mlkit/vision/barcode/internal/zzd;

    .line 11
    iput-object p0, v1, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object p0

    return-object p0
.end method
