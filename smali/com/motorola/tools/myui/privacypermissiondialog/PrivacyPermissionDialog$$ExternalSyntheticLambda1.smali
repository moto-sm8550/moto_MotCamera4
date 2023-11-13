.class public final synthetic Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    .line 1
    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
