.class public abstract Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.super Ljava/lang/Object;
.source "BaseTidbitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;",
            ">;"
        }
    .end annotation
.end method

.method public getBackground()I
    .locals 0

    const p0, 0x7f080099

    return p0
.end method

.method public getBgColor()I
    .locals 0

    const p0, 0x7f060321

    return p0
.end method

.method public abstract getDetailsString()Ljava/lang/String;
.end method

.method public abstract getFieldsCount()I
.end method

.method public getIcon()I
    .locals 0

    const p0, 0x7f0801f5

    return p0
.end method

.method public abstract getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
.end method

.method public abstract getTitleString()Ljava/lang/String;
.end method
