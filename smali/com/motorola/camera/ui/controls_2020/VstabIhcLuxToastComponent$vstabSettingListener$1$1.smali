.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$vstabSettingListener$1$1;
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
.field public final synthetic $setting:Lcom/motorola/camera/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;Lcom/motorola/camera/settings/Setting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$vstabSettingListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$vstabSettingListener$1$1;->$setting:Lcom/motorola/camera/settings/Setting;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$vstabSettingListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$vstabSettingListener$1$1;->$setting:Lcom/motorola/camera/settings/Setting;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 4
    :goto_1
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
