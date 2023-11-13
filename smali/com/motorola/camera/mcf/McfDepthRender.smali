.class public final Lcom/motorola/camera/mcf/McfDepthRender;
.super Ljava/lang/Object;
.source "McfDepthRender.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfDepthRender"

.field public static final FORMAT_NV21:Ljava/lang/String; = "NV21"


# instance fields
.field private final mFocalPointX:I

.field private final mFocalPointY:I

.field private final mFocusType:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mIntensity:F

.field private final mName:Ljava/lang/String;

.field private final mRefHeight:I

.field private final mRefWidth:I

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    .line 23
    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    .line 24
    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    .line 25
    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    .line 26
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "name"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    const-string/jumbo v0, "text"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    const-string v0, "format"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const-string v0, "renderParam"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "intensity"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    const-string v0, "focusPoint"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "left"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    const-string/jumbo v1, "top"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    const-string v0, "primaryImage"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "width"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    const-string v1, "height"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    const-string v0, "focusType"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 15
    throw p0
.end method


# virtual methods
.method public getFocalPointX()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    return p0
.end method

.method public getFocalPointY()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    return p0
.end method

.method public getFocusType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getIntensity()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRefHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    return p0
.end method

.method public getRefWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "McfDepthRender{mName=\'"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mText=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    const-string v3, ", mFormat=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    const-string v3, ", mInstance="

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFocalPointX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocalPointY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    const/16 v1, 0x7d

    .line 9
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
