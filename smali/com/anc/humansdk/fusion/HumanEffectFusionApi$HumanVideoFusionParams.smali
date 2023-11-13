.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoFusionParams"
.end annotation


# instance fields
.field public bg_light_factor:F

.field public blue:F

.field public blurIntensity:F

.field public bokeh_max_radius_factor:F

.field public facula_density:F

.field public green:F

.field public light_factor:F

.field public max_light_threshold:F

.field public min_light_threshold:F

.field public red:F

.field public saturation:F

.field public smooth_amount:F

.field public yellow:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 3
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 4
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 5
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 6
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 7
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 8
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 9
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 10
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 11
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 12
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 13
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 14
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 17
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 18
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 19
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 20
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 21
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 22
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 23
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 24
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 25
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 26
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 27
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 28
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 31
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 32
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 33
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 34
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 35
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 36
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 37
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 38
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 39
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 40
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 41
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 42
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 44
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 45
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 46
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 47
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 48
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 49
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 50
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 51
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 52
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 53
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 54
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 55
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 56
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 58
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 59
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 60
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 61
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 62
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 63
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 64
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 65
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 66
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 67
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 68
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 69
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 70
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 72
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    .line 73
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 74
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 75
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 76
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 77
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 78
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 79
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 80
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 81
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 82
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 83
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 84
    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 86
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    .line 87
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    .line 88
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    .line 89
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 90
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 91
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 92
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    .line 93
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    .line 94
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    .line 95
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    .line 96
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    .line 97
    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    .line 98
    iput p6, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    return-void
.end method


# virtual methods
.method public UpdateBgLightFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    return-object p0
.end method

.method public UpdateBlurIntensity(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    return-object p0
.end method

.method public UpdateBokehMaxRadiusFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    return-object p0
.end method

.method public UpdateColorValue(FFFF)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    .line 1
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    .line 2
    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    .line 3
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    .line 4
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    return-object p0
.end method

.method public UpdateFaculaDensity(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    return-object p0
.end method

.method public UpdateLightFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    return-object p0
.end method

.method public UpdateMaxLightThreshold(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    return-object p0
.end method

.method public UpdateMinLightThreshold(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    return-object p0
.end method

.method public UpdateSaturation(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    return-object p0
.end method

.method public UpdateSmoothAmount(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    return-object p0
.end method
