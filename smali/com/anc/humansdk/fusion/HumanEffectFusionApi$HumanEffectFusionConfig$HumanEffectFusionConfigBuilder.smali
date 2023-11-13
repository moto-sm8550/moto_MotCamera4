.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanEffectFusionConfigBuilder"
.end annotation


# instance fields
.field private cache_path:Ljava/lang/String;

.field private isBackCamera:Z

.field private isRealTime:Z

.field private log_level:I

.field private model_data:[B

.field private native_lib_path:Ljava/lang/String;

.field private power_mode:Lcom/anc/humansdk/fusion/SdkPowerMode;

.field private sdkLoadType:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->log_level:I

    .line 3
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->power_mode:Lcom/anc/humansdk/fusion/SdkPowerMode;

    .line 4
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->sdkLoadType:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    return-void
.end method


# virtual methods
.method public Build()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
    .locals 8

    new-instance v7, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    iget-boolean v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->isRealTime:Z

    iget-object v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->model_data:[B

    iget-object v3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->cache_path:Ljava/lang/String;

    iget-object v4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->native_lib_path:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->isBackCamera:Z

    iget-object v6, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->power_mode:Lcom/anc/humansdk/fusion/SdkPowerMode;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;-><init>(Z[BLjava/lang/String;Ljava/lang/String;ZLcom/anc/humansdk/fusion/SdkPowerMode;)V

    return-object v7
.end method

.method public setBackCamera(Z)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->isBackCamera:Z

    return-object p0
.end method

.method public setCache_path(Ljava/lang/String;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->cache_path:Ljava/lang/String;

    return-object p0
.end method

.method public setLog_level(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->log_level:I

    return-object p0
.end method

.method public setModel_data([B)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->model_data:[B

    return-object p0
.end method

.method public setNative_lib_path(Ljava/lang/String;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->native_lib_path:Ljava/lang/String;

    return-object p0
.end method

.method public setPower_mode(Lcom/anc/humansdk/fusion/SdkPowerMode;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->power_mode:Lcom/anc/humansdk/fusion/SdkPowerMode;

    return-object p0
.end method

.method public setRealTime(Z)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->isRealTime:Z

    return-object p0
.end method

.method public setSdkLoadType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;->sdkLoadType:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    return-object p0
.end method
