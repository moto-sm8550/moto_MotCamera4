.class public final Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;
.super Landroid/app/AlertDialog;
.source "PrivacyPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;
    }
.end annotation


# instance fields
.field public button1:Landroid/widget/TextView;

.field public button1Container:Landroid/widget/RelativeLayout;

.field public button2:Landroid/widget/TextView;

.field public button2Container:Landroid/widget/RelativeLayout;

.field public checkBox:Landroid/widget/CheckBox;

.field public final mActivityContext:Landroid/content/Context;

.field public messagesContainer:Landroid/widget/LinearLayout;

.field public scrollDivider:Landroid/view/View;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f12017a

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->mActivityContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/EventLoopKt;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0045

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/EventLoopKt;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lkotlinx/coroutines/EventLoopKt;->isInMultiMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0044

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0046

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 9
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v0, 0x1020016

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->title:Landroid/widget/TextView;

    const v0, 0x1020019

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    const v0, 0x102001a

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2:Landroid/widget/TextView;

    const v0, 0x7f0a00d9

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f0a00a5

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00a6

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2Container:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0282

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0a0357

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->scrollDivider:Landroid/view/View;

    const v1, 0x7f0a0281

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->messagesContainer:Landroid/widget/LinearLayout;

    .line 19
    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    new-instance p1, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method
