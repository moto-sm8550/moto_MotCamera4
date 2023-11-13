.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"

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
    .locals 14

    .line 1
    const-class p0, Lcom/google/mlkit/common/internal/model/zzg;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    const-class v1, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    const-class v4, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    .line 2
    invoke-static {v4}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v4

    .line 3
    new-instance v5, Lcom/google/firebase/components/Dependency;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v5, Lcom/google/mlkit/common/internal/zza;->zza:Lcom/google/mlkit/common/internal/zza;

    .line 5
    iput-object v5, v4, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 6
    invoke-virtual {v4}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v4

    const-class v5, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 7
    invoke-static {v5}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v5

    sget-object v8, Lcom/google/mlkit/common/internal/zzb;->zza:Lcom/google/mlkit/common/internal/zzb;

    .line 8
    iput-object v8, v5, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 9
    invoke-virtual {v5}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v5

    const-class v8, Lcom/google/mlkit/common/model/RemoteModelManager;

    .line 10
    invoke-static {v8}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    .line 11
    new-instance v9, Lcom/google/firebase/components/Dependency;

    const/4 v10, 0x2

    invoke-direct {v9, v1, v10, v7}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v8, v9}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v9, Lcom/google/mlkit/common/internal/zzc;->zza:Lcom/google/mlkit/common/internal/zzc;

    .line 13
    iput-object v9, v8, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 14
    invoke-virtual {v8}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v8

    const-class v9, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 15
    invoke-static {v9}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v9

    const-class v11, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 16
    new-instance v12, Lcom/google/firebase/components/Dependency;

    invoke-direct {v12, v11, v6, v6}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 17
    invoke-virtual {v9, v12}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v11, Lcom/google/mlkit/common/internal/zzd;->zza:Lcom/google/mlkit/common/internal/zzd;

    .line 18
    iput-object v11, v9, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 19
    invoke-virtual {v9}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v9

    .line 20
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v11

    sget-object v12, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    .line 21
    iput-object v12, v11, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 22
    invoke-virtual {v11}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v11

    const-class v12, Lcom/motorola/tools/myui/R$styleable;

    .line 23
    invoke-static {v12}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v12

    .line 24
    new-instance v13, Lcom/google/firebase/components/Dependency;

    invoke-direct {v13, v0, v6, v7}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 25
    invoke-virtual {v12, v13}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v0, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/mlkit/common/internal/zzf;

    .line 26
    iput-object v0, v12, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 27
    invoke-virtual {v12}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    .line 28
    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v12

    .line 29
    new-instance v13, Lcom/google/firebase/components/Dependency;

    invoke-direct {v13, v2, v6, v7}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 30
    invoke-virtual {v12, v13}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v2, Lcom/google/mlkit/common/internal/zzg;->zza:Lcom/google/mlkit/common/internal/zzg;

    .line 31
    iput-object v2, v12, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 32
    invoke-virtual {v12}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v2

    .line 33
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 34
    iput v6, v1, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 35
    new-instance v12, Lcom/google/firebase/components/Dependency;

    invoke-direct {v12, p0, v6, v6}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 36
    invoke-virtual {v1, v12}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object p0, Lcom/motorola/tools/myui/R$id;->zza:Lcom/motorola/tools/myui/R$id;

    .line 37
    iput-object p0, v1, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 38
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzam;->zza:Lcom/google/android/gms/internal/mlkit_common/zzak;

    const/16 v1, 0x9

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v3, v12, v7

    aput-object v4, v12, v6

    aput-object v5, v12, v10

    const/4 v3, 0x3

    aput-object v8, v12, v3

    const/4 v3, 0x4

    aput-object v9, v12, v3

    const/4 v3, 0x5

    aput-object v11, v12, v3

    const/4 v3, 0x6

    aput-object v0, v12, v3

    const/4 v0, 0x7

    aput-object v2, v12, v0

    const/16 v0, 0x8

    aput-object p0, v12, v0

    .line 40
    invoke-static {v12, v1}, Lcom/moto/patternlibrary/R$layout;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_common/zzam;

    move-result-object p0

    return-object p0
.end method
