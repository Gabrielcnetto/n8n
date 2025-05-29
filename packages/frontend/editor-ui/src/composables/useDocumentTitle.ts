//const DEFAULT_TITLE = 'Workflow Automation';
const DEFAULT_TITLE = 'Galho - Fluxo de automações';
export function useDocumentTitle() {
	const set = (title: string) => {
		// Usa apenas o título fornecido, sem sufixo
		document.title = title || DEFAULT_TITLE;
	};

	const reset = () => {
		set('');
	};

	return { set, reset };
}
