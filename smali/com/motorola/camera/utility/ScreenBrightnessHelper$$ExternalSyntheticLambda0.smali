.class public final synthetic Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Landroid/view/Window;

.field public final synthetic f$2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/Window;

    iput-object p3, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/Window;

    iget-object p0, p0, Lcom/motorola/camera/utility/ScreenBrightnessHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "$isChanged"

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
