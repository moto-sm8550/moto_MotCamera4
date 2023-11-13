.class public final Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;
.super Ljava/lang/Object;
.source "InAppUpdateUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/InAppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateStateData"
.end annotation


# instance fields
.field public final availability:I

.field public final stateChanged:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "availability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    iput p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    iget v3, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    iget p1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "UpdateStateData(availability="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    invoke-static {v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stateChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
