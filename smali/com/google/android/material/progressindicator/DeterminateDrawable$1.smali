.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable$1;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "DeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "indicatorLevel"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 2
    iget p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->indicatorFraction:F

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p2, p0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setIndicatorFraction(F)V

    return-void
.end method
