.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$envListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VstabIhcLuxToastComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $lux:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$envListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$envListener$1$1;->$lux:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$envListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$envListener$1$1;->$lux:F

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->thresholdLux:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->luxLowerThanThreshold:Z

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
